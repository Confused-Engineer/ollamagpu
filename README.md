# ollamagpu
Ollama with NVIDIA-SMI
The default Ollama Image with NVIDIA Driver installeed for NVIDIA GPU support on Systems and OS's such as TrueNAS Scale.

to-build:
 - Download this Repository
 - cd into ollamagpu
 - run:
    sudo docker build . -t ollamagpu:latest

to-run:
 - sudo docker run --gpus=all -p 11434:11434 -v /local/dir:/root/.ollama ollamagpu:latest

Notes: 

For TrueNAS you need you assign 1 GPU to the container as well as run in priviledged mode for full functionality based off testing.
