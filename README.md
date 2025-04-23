# BENCHED CONCEPT - UNMAINTAINED
# EVA - Emacs Virtual Assistant
<img src="assets/EVA-350.jpg" align="right" />
EVA is the first AI designed to work alongside you, in Emacs.
The goal is to have her take on more and more of the actual manipulation of Emacs and its buffer content, while the user provides instructions and feedback. This is to be achieved through a language model trained on Elisp.


The project is under active development and has not yet launched. There is a finetuned Model, but it provides only limited functionality.


If you haven't yet, read the [announcement Article](https://finnfrotscher.com/posts/eva-emacs-virtual-assistant/).

My motivations for writing the article and this repository are (1) to start a conversation about the model and application and (2) to convince you to contribute your valuable competence to this project.

<div style="clear: both;"></div>

| [Article](https://finnfrotscher.com/posts/eva-emacs-virtual-assistant/)
| [Huggingface](https://huggingface.co/lazerjesus/eva) 
| [Github](https://github.com/lazerjesus/eva) 
| [Discord](https://discord.gg/9Uxn45ADJs)

##  Architecture
Let me provide an overview of the system I have in mind. Except for `eva.sx` all components exist today, are open source, and can be self-hosted. 

Users interact with EVA through an Emacs package, which can communicate with either a locally hosted inference service or a hosted API. The core language model is trained in a separate environment and consumes the training data from a CSV. In the future, data should be generated and managed by a dedicated system. 

<img src="docs/context.png" />

### Containers
Users: End-users interacting with EVA via Emacs.

Emacs Package: Client-side package providing the interface for EVA.

eva.sx: Centralized service hosting the inference API.

Local Inference: Handles inference tasks for local setups.

EVA: Core language model for code completion and Emacs functionalities.

Training Environment: Separate setup for model training.

Data: Currently a CSV file, planned to evolve into a dedicated system.


## Roadmap
We have a few questions to answer before we can start building.
On a high level, those are 
1. What do we launch first to provide immediate value?
2. How do we get large amounts of high-quality data?
3. What do we build next?

I have some ideas and I would love to hear yours. Please join the [Discord](https://discord.gg/9Uxn45ADJs) to discuss and contribute. My ideas are summarized below:

## Challenges
I see a few ways this project could go sideways and stale. Those are data, ambition, and timing. 

**Data** LLMs require large amounts of specific, high-quality data and no such dataset exists for Emacs. 

**Ambition** Getting lost in an overly large vision and not providing value immediately.

**Timing** LLMs still require a lot of memory and compute, maybe prohibitively.

## Strategy
To solve these challenges I think we should focus on providing a small amount of value immediately and design the system in a way that allows us to add incremental value as the technology matures.

I think we should start by building, deploying, and monetizing a simple autocomplete system, probably based on Codellama.

I believe this is the right strategy for the following reasons:

(1) Since inference is costly and hosting it provides real value, we can monetize this to fund other aspects of the project. Like data generation!

(2) We start to build a community around the project and get users.

(3) We learn to run and deploy such a system in production, as an OSS community.


Once this is in place, we build out tools and methods for data acquisition and design custom models for EVA. I have some ideas here too but I am counting on the community to crowdsource ideas.

## Miletstones
From my current vantage point, I see the project taking these three next steps:

### Alpha - Proof of Concept
We are here. The idea is articulated and a demonstration of the system is available. Now we need to build a community around the project and decide what to do next.
If the community agrees, we will build a hosted autocomplete service based on Codellama and a system for data acquisition and curation. 

### Beta - Working Autocomplete Service
The beta phase is reached when we have a working autocomplete service. Now we can start to grow and monetize the service to support larger ambitions. Having users and cash flow allows us to take the first stab at the __real__ vision.

### Version 1.0 - A Fully Working System
Upon reaching version 1.0, we start iterating. What this will look like is up to the community to ideate and commit to.

## Data
AI is very hungry for data. Codellama was trained on 500.000.000.000 tokens. That's a lot of data. The 18.000 lines training set I used for the proof-of-concept model is 740.722 tokens. Only 499.999.259.278 to go. We need to figure out a smart and scalable way to get data for EVA.

Let's start by looking at the types of data needed. For training EVA, we essentially need two types of datasets.

### Foundational Data
This is a massive amount of data that might be generated by recording regular Emacs usage sessions, which would provide a broad base of interactions to train the foundational model. With this, EVA can learn how Emacs users behave in a wide range of scenarios. She learns how Emcas works.
  
### Instruction Data
This smaller, curated dataset will contain specific instructions and their corresponding Elisp outputs. It has to be a carefully crafted set of interactions that helps fine-tune EVA's abilities and responses. This gives EVA the capability to perform specific tasks. 

### Currently
Here's a sample from the current dataset that I used to finetune Codellama:
```csv
'''How do I generate the Fibonacci sequence up to a specific number?''';'''(defun fibonacci-sequence (n) (if (< n 2) (list 0) (let ((result (list 0 1))) (while (< (car (last result)) n) (setq result (append result (list (+ (car (last result)) (cadr (last result))))))) (car (last result)))))'''
'''Check if a given string is a palindrome''';'''(let ((string (read-string "Enter a string: "))) (if (equal string (apply #''string (reverse (string-to-list string)))) "Palindrome" "Not a Palindrome"))'''
'''How can I know if the Emacs server is currently active?''';'''(equal (process-status server-process) (intern "run"))'''
'''Run a Python script''';'''(shell-command (concat "python " (read-file-name "Enter the name of the Python script: ")))'''
```
As you can see, the data is a simple CSV file with two columns: the prompt and the corresponding Elisp code. Most of the data was AI-generated and is not useful beyond proof of concept.

### How to get data
I see two ways to get data. 
1. We can generate it manually. 
2. Users donate it. 

My sense is that it will be a combination of both. We provide a way for users to donate data which will be used to train the foundation model. And we maintain a high-quality dataset by hand for finetuning the specific tasks and skills EVA should master.

## Contribution
Contributing to EVA can take several forms and be aligned with different phases of the project. I am seeking help with data, development of the Elisp client, design and provisioning of the model, as well as insightful discussions and feedback.

### Data Contribution 
A vital part of training AI, including EVA, is data. You can help me by providing examples of tasks and corresponding Elisp code, adapting existing datasets to Elisp, and capturing and annotating Elisp during daily Emacs usage. If you're up for a challenge, consider building a data contribution system to streamline this process.

### Elisp Client Development 
A robust Emacs package is critical for smooth interaction between EVA and Emacs. If you're experienced or interested in creating such packages, your contribution would be of immense value here.

### Model Development 
The choice and design of our model architecture play a key role in the success of EVA. Participating in discussions and experiments around potential model architectures would be a significant contribution at this stage.

Regardless of the phase, your participation in conversations, contributions to the ongoing development, and usage of EVA are immensely valuable. Thank you for being a crucial part of the EVA project and helping enhance the capabilities of Emacs.


## Contact
Feel free to join the [Discord](https://discord.gg/9Uxn45ADJs) or create a GitHub issue.



## Installation and Running Instructions
[... Following]

## Demo of Current Capabilities
[... Following]



