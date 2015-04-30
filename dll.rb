class Node
	attr_accessor :value, :previous, :next

	def initialize(value, previous = nil)
		@value = value
		@previous = previous
		@next = nil
	end
end	

class DoublyLinkedList
	attr_accessor :tail, :head
	
	# add instance method
	attr_reader :count

	def initialize(value)
		@head = Node.new(value)
		@tail = @head
		# @counter = 1
		@count = 1
	end

	def add(value)
		# new_node = Node.new(value, tail)
		# old_node = tail

		# old_node.next = new_node
		# tail = new_node

		new_node = Node.new(value)

		tail.next = new_node
		new_node.previous = tail

		@tail = new_node
		# @counter += 1
		@count += 1
	end

	# # return number of nodes in list
	# def count
	# 	@counter

		
	# end
end
