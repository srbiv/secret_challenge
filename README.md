# SecretChallenge

You are given a function 'secret()' that accepts a single integer parameter and returns an integer. In your favorite programming language, write a command-line program that takes one command-line argument (a number) and determines if the secret() function is additive [secret(x+y) = secret(x) + secret(y)], for all combinations x and y, where x and y are all prime numbers less than the number passed via the command-line argument.  Describe how to run your examples.

## Instructions

### Prerequisites

You machine should have a modern version of Ruby installed (2+).

### Analyzing the secret

Use `rake secret_checker` to run the analysis passing in an integer limit for the analysis. Example:

```shell
  rake 'secret_checker[100]'
```

### Note about the secret

The exercise provided no example secrets, and when I asked for feedback I was told to "answer the question based on how you interpret it". I chose to use a secret that was additive for certain ranges but not for others so that the command line checker could show both responses. I would tell you what that function is, but it is a secret. No peeking!
