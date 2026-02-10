from openclaw import Agent
import os

agent = Agent(
    name="hello-agent",
    system_prompt="You are a friendly assistant that responds briefly.",
    model="GPT-5 mini"
)

def main():
    print("OpenClaw agent is running.")
    response = agent.run("Say hello and explain what OpenClaw is in one sentence.")
    print("Agent response:")
    print(response)

if __name__ == "__main__":
    main()
