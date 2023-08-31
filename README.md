# EVA - Emacs Virtual Assistant
<img src="assets/EVA-350.jpg" align="right" />
EVA is the first AI trained to work along side you, in Emacs.
The goal is to have her take on more and more of the actual manipulation of Emacs and its buffer content, while the human provides instructions and feedback. <!-- The goal is to have you converse and reason with her, while she takes on execution.  -->
This is to be achieved through a combination of a general-purpose language model and several specialized agents (coding, reasoning, memory, or [contribute your own](#contribution)); all trained on elisp and emacs usage.
The project is under active development and has not yet launched. If you haven't yet, read the [announcement article](https://finnfrotscher.com/posts/eva-emacs-virtual-assistant/).

My motivation for writing the article and this repository is (1) to convince you to contribute your valuable brainjuices to this project and (2) to serve as a ground zero for a conversation about the model and application we are going to develop over the coming months and years. Hopefully.

<div style="clear: both;"></div>

| [Article](https://finnfrotscher.com/posts/eva-emacs-virtual-assistant/)
| [Huggingface](https://huggingface.co/lazerjesus/eva) 
| [Github](https://github.com/lazerjesus/eva) 
| [Discord](https://discord.gg/9Uxn45ADJs)

## Roadmap
we have a few questions to answer before we can start building.
on a high level those are (1) what do we launch first (2) how do we get data and (3) what do we build next.
I have some ideas but I would love to hear yours. My ideas are summarized in challanges and strategy below. Please join the [Discord](https://discord.gg/9Uxn45ADJs) to discuss and contribute.

## Challanges
We are constrained in multiple dimensions and I see a few ways this project could go sideways. Those are data, ambition and timing. 

### Data
LLMs require large amounts of specific, high quality data and no such dataset exists for Emacs. We need data to train EVA to use Emacs. 

### Ambition
Getting lost in an overly large vision and not providing value immediately.

### Timing
Timing, or Performance. We are still very early in the development of LLMs, GPUs and the performance might just not be there yet. Maybe the model can't run on a local machines fast enough to provide a sane user with value. Maybe the model needs to be too large to be able to run locally. 

## Strategy
To solve these challanges I think we should focus on providing a small amount of value immediately and design the system in a way that allows us to add incremental value as the technology matures. Concretely this means that I think we should build and deploy a simple autocomplete system now. Probably based on Llama2. The value would be (1) that we start to build a community around the project. (2) That we provide immidiate value to users. (2) That we learn to run and deploy such a system in production. Then, in parallel, build out tools and methods for data aquisition and design custom models for specific, well defined tasks.

I see two ways to get data. (1) We can generate it manually. Or (2) Users donate it. My sense is that it will be a combination of both. We provide a way for users to donate data, which is used to train the foundation model. And we maintain a high quality dataset by hand for finetuning the specific tasks and skills EVA should master.



----------------------------------------------------OLD--FOR-REFERENCE--------------------------------------------------
## Overview of the Architecture
The basic parts of the architecture are in place, including a setup for training, the model, an API, and a basic client.

The model is trained on a small dataset of 18,000 rows of instruction + Elisp pairs, covering topics from math to file administration. Most of the data was AI-generated.
EVA consists of an Emacs client that communicates with an LLM model hosted on a CUDA GPU-enabled server. The server runs a Flask app inside a Jupyter notebook, providing an API consumed by the Emacs client using Elisp native utilities. The output from the LLM is directly piped into the Elisp interpreter, allowing seamless interaction and execution.

### Data
The training data consists of a diverse range of topics, primarily focusing on Elisp operations. Examples include basic math operations, file management tasks, and more complex coding routines.

## Areas of possible contribution
Contributing to EVA is possible on tasks ranging from one time 10 minutes to continuous long term efforts. 
We are in the early stages of a potentially decade-long project, offering both freedoms and responsibilities. Here's how you can contribute:

### Use Cases and Data
-   Write examples of tasks and corresponding Elisp code.
-   Adapt existing datasets to Elisp.
-   Administer others' contributions.
-   Capture and annotate Elisp during daily Emacs usage.

### Model Creation
-   Experiment with base models and fine-tuning.
-   Develop continuous training and distribution systems.
-   Create models for various hardware, local and cloud.
-   Explore distributed training methods.

### Application Development
-   Build an Emacs package for communication between the model and Emacs.
-   Consider UI/UX aspects, safeguards, utility functions, and agent tooling.
-   Develop chain-of-thought architectures and sub-agents.


## Model Card
### Model Details
The current model is fine-tuned on top of a 3b foundation model with a 300m Lora adapter.

### Training Data
The model was trained on 18,000 rows of instruction + Elisp pairs, covering topics from math to file administration. Most of the data was AI-generated.


## Contact
Feel free to join the [Discord](https://discord.gg/9Uxn45ADJs) or create a GitHub issue.

## Installation and Running Instructions
[... Following]

## Demo of Current Capabilities
[... Following]



