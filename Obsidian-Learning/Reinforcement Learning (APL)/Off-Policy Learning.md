Tags: [[Actor-Critic Algorithm]]

memory bank
1. Learn Q Function using bellman update (temporal difference method)
2. Then we learn a policy for how to act in the environment

Main Algorithms
- Deterministic Policy Gradient (TD3)
- Reparameterization Gradient

Issues with this is that you are both estimating and maximizign a 2 Q functions
- Follow-on research shows that decoupling the policy function (learning Q and V) than learnign 2 Q functions