//SPDX-License-Identifier: GPL-3.0

pragma solidity <0.9.0;

contract Task_list{

    struct Todo{
        string todo_Name;
    }

    Todo[] private todo_task;

    function add_task(string memory _todoName) public{
        todo_task.push(Todo(_todoName));
    }

    function deletesingle_task(uint8 _index) public{
        delete todo_task[_index]; 
    }

    function updateTodo(uint8 _index, string memory new_todoName) public{
        todo_task[_index].todo_Name = new_todoName;
    }

    function deleteall_task() public{
        delete todo_task;
    }

    function showall_todo() public view returns(Todo[] memory){
        return todo_task; 
    }
}
