module ApplicationHelper
    def full_title(title = '')
        base_title = "기타 코드 악보"
        if title.empty?
            base_title
        else
            title + ' | ' + base_title
        end
    end
end
