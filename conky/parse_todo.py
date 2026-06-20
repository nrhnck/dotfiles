#!/usr/bin/env python3
import re
import datetime
import os
import sys
from pathlib import Path

def main():
    path = os.environ.get('CONKY_FILE', '/home/nrhnck/org/todo.org')
    if not Path(path).exists():
        return

    content = Path(path).read_text()
    today = datetime.date.today()
    items = re.split(r'\n(?=\*+\s+)', content)

    output_lines = []
    trigger_popup = False

    for item in items:
        header_match = re.match(r'^\*+\s+(?:TODO|NEXT)\s+(.*)', item)
        if header_match:
            title = header_match.group(1).split('\n')[0].strip()
            sched_match = re.search(r'SCHEDULED:\s+<(\d{4}-\d{2}-\d{2})', item, re.IGNORECASE)
            
            if sched_match:
                date_str = sched_match.group(1)
                sched_date = datetime.datetime.strptime(date_str, '%Y-%m-%d').date()
                days_left = (sched_date - today).days
                
                if days_left == 0:
                    output_lines.append(f'[TODAY] {title}')
                    trigger_popup = True
                elif days_left == 1:
                    output_lines.append(f'[TOMORROW] {title}')
                    trigger_popup = True
                elif days_left == 3:
                    output_lines.append(f'[3 DAYS LEFT] {title}')
                    trigger_popup = True
                elif days_left == 7:
                    output_lines.append(f'[1 WEEK LEFT] {title}')
                    trigger_popup = True
                elif -7 <= days_left < 0:
                    output_lines.append(f'[OVERDUE {abs(days_left)}d] {title}')
                    trigger_popup = True

    if len(sys.argv) > 1 and sys.argv[1] == '--check':
        if trigger_popup:
            sys.exit(0)
        else:
            sys.exit(1)

    for line in output_lines[:5]:
        print(line)

if __name__ == '__main__':
    main()
