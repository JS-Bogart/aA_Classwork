import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import addTodos from './actions/todos_action';
import {removeTodo, addTodo} from './actions/todo_action';
import {addStep, addSteps, removeStep} from './actions/step_action';
import Root from './components/root';
import {allTodos} from './reducers/selectors'

document.addEventListener("DOMContentLoaded", ()=>{
  windowStuff();
  const store = configureStore();
  window.store = store;

  const content = document.getElementById("content");
  ReactDOM.render(<Root store={store}/>, content);
});


const windowStuff = ()=>{
  window.addTodos = addTodos;
  window.addTodo = addTodo;
  window.removeTodo = removeTodo;
  window.addStep = addStep;
  window.addSteps = addSteps;
  window.removeStep = removeStep;
  window.allTodos = allTodos;
  console.log("to do list");
}

