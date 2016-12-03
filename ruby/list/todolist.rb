class TodoList

	def initialize(string)
		todo_list = []
		todo_list << string.split(',')
		return todo_list
	end

	def gets_method

	end



end

p TodoList.new("do the dishes", "mow the lawn")