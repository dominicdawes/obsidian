
Overview


### Episode

An **episode** in RL is a single, ***complete run*** of an agent's interaction with an environment. It starts from a defined initial state and continues until a terminal state is reached.

- **Examples:**
    - A full game of Pong or DOTA2
    - A single trip for a self-driving car
    - A robot arm completing a specific task

## Tau ($\tau$)

The **total number of timesteps** in an episode. It's a crucial parameter in algorithms like Q-learning, where the update rule involves summing over the rewards from the current state to the end of the episode.