# RLearn - Basic RL

Given a few configuration lines, an Agent can be made ready to start the training, aimed at finding the best action to be taken at any known state.
Supplied out of the box techniques can be extended or changed for any specific case.

- [Installation](#installation)
- [Basic Requirements](#basic-requirements)
- [Agents](#agents)
- [Quick Start](#quick-start)

## Installation

Please make sure ```Module::Build``` is installed before executing below operation.

```perl
perl Build.PL
```

## Basic requirements

  * An Environment must have a finite number of States. 
  * Each state must be unique. 
  * All states must have at least one action.
  * Actions on a state must be finite.
  * There must be at least one Reward set on at least one State.

## Agents

Agents are made of two parts: 
  * The Decision maker picking up actions to take from given state and available actions
  * The Learning part made of processes that update for given rewards. 

Above parts can be each made of different data flows. Under ```RLearn```, these classes 
are classified as ```Active``` or ```Reactive```, where:

<b>Active</b> is the name given when information is requested by the Active class to external sources.</br>
<b>Reactive</b> is the name given when information is requested by external sources to the Reactive class.

### AR Agents (Active-Reactive)

This Agent sends a request to external classes asking for the state and available
actions, returning the selected action. The reward is received only when external
classes have one to supply, or may even never be sent..

### AA Agents (Active-Active)

Agent sends request to the external classes asking for the state and available
actions, returning the selected action. The reward is also requested by the Agent
to caller, meaning that an instantiation of the external classes must be supplied
to the Learning Agent classes.

### RR Agents (Reactive-Reactive)

A Reactive Agent sits waiting for external sources to feed them with data for 
available actions and current state they are on. The same applies to the reward,
being of the total responsibility of external sources to feed these agents with
data.

### RA Agents (Reactive-Active)

RA Agents await for external sources to give a state and actions available, to which 
an action is returned and a reward request is made asynchronously.

## Quick start
