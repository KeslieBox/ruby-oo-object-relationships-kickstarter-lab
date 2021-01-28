class Project
    attr_accessor 
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.collect do |backed_projects|
            if self == backed_projects.project
                backed_projects.backer
            end
        end.compact
    end
end