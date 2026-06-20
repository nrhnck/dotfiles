function syncnotes --wraps="git add .; and git commit -m 'Update notes'; and git push origin main" --wraps="git add .; git commit -m 'Update notes'; git push origin main" --description "alias syncnotes git add .; git commit -m 'Update notes'; git push origin main"
    git add .; git commit -m 'Update notes'; git push origin main $argv
end
