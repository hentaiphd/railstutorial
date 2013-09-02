module ApplicationHelper

    #Returns the full title on a per-page basis.
    def full_title(page_title)
        base_title = "My Lovely Site"
        if page_title.empty?
            base_title
        else
            "#{base} | #{page_title}"
        end
    end
end
