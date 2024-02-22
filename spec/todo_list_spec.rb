require "todo_list"

RSpec.describe TodoList do
    let(:todo) { TodoList.new()}

    describe "#add" do
      it "adds a todo to the list" do
        expect(todo.add(1)).to eq([1])
        # Fill in the test
      end
    end
  
    describe "#remove" do
      it "removes a todo from the list" do
        todo.add(1)
        expect(todo.remove(1)).to eq(1)
      end
    end
  
    describe "#todos" do
      it "returns all todos" do
        todo.add(1)
        todo.add(2)
        expect(todo.todos).to eq([1, 2])
      end
    end
  end
  