FROM docker.all-hands.dev/all-hands-ai/openhands:latest

# This will run OpenHands in process mode
ENV RUNTIME=process

# Set working directory for persistence
ENV OH_PERSISTENCE_DIR=/app/.openhands

# Expose the web port
EXPOSE 3000

# Start command
CMD ["poetry", "run", "python", "-m", "openhands.server.listen"]
