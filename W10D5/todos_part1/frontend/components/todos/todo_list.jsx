import React from 'react';


const TodoList = (store) =>{
  
  return (
    <ul>
      <li>OEHCTUOETUHOETUHOETUHOEUHOEEH</li>
      {store.todos.map( (todo) => (
        <li key={todo.id}> Title: {todo.title} </li>
        ))}
    </ul>
  )
};


export default TodoList;
