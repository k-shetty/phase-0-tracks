class TodoList
	def initialize(task)
		@list = []
		@list = task
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

