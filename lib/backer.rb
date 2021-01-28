require 'pry'
class Backer
attr_accessor 
attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.collect do |backed_projects|
            if self == backed_projects.backer
                backed_projects.project
            end
        end.compact
    end
end