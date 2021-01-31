import {ADD_TODO, REMOVE_TODO} from '../actions/todo_action'
import {ADD_TODOS} from '../actions/todos_action'


const todosReducer = (oldState = {}, action) => {

    Object.freeze(oldState);
    const nextState = Object.assign({}, oldState);

    switch (action.type) {
        case ADD_TODOS:
            // nextState => Object
            // action.todos => array of todo objects
            action.todos.forEach(todo => {
                nextState[todo.id] = todo;
            })
            return nextState;

        case ADD_TODO:
            nextState[action.todo.id] = action.todo;
            return nextState;

        case REMOVE_TODO:
            delete nextState[action.todo.id];
            return nextState;

        default:
            return oldState;
    }

}

export default todosReducer;