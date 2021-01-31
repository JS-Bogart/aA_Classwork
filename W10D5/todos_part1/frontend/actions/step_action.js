export const ADD_STEP = "ADD_STEP";
export const REMOVE_STEP = "REMOVE_STEP";
export const ADD_STEPS = "ADD_STEPS";

export const addStep = (step) => ({
  type: ADD_STEP,
  step
});

export const addSteps = (steps) => ({
  type: ADD_STEPS,
  steps
});

export const removeStep = (step) => ({
  type: REMOVE_STEP,
  step
});

