#!/bin/bash

# Update the system
sudo apt update
sudo apt install -y pkg-config libssl-dev


# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# Verify Rust installation
rustc --version
cargo --version

# Add Rust to bashrc
echo 'source $HOME/.cargo/env' >> ~/.bashrc
source ~/.bashrc

# Install Soundness Layer
curl -sSL https://raw.githubusercontent.com/soundnesslabs/soundness-layer/main/soundnessup/install | bash
source ~/.bashrc

# Update and install Soundness
soundnessup install
soundnessup update

# Generate a key (change "my-key" if needed)
soundness-cli generate-key --name my-key
