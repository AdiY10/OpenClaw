from openclaw import Agent
import os

agent = Agent(
    name="hello-agent",
    system_prompt="You are a friendly assistant that responds briefly.",
    model="gpt-4o-mini"
)

def main():
    print("OpenClaw agent is running.")
    response = agent.run("Say hello and explain what OpenClaw is in one sentence.")
    print("Agent response:")
    print(response)

if __name__ == "__main__":
    main()
