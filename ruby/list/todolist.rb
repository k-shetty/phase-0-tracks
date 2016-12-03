class TodoList
	# attr_reader : 

	# def initialize(string)
	# 	todo_list = string.split(',')
	# 	return todo_list
	# end

	def initialize(task)
		@list = []
		@list = task
		# @list << task[1]
		# @list
	end

	def get_items()
		@list 
	end

	def add_item(item)
		@list << item

	end

	def delete_item(input)
		@list.delete(input)
	end

	def get_item(int)
		@list[int]
	end
end

# p TodoList.new("do the dishes, mow the lawn")
# p TodoList.new(["do the dishes", "mow the lawn"])