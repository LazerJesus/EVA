
<a id="org22d398b"></a>

# EVA - Emacs Virtual Assistant


<a id="org7009272"></a>


## About
| | |
|:---|:---|
| ![EVA Image](./assets/EVA.jpg) | EVA (Emacs Virtual Assistant) is a groundbreaking project that aims to integrate a coding/agent LLM (Language Model) within Emacs, using it as its runtime or body. Leveraging Emacs’ text-based nature, continuous runtime, architectural openness, and vast tooling, EVA seeks to create a symbiotic relationship between Emacs and LLMs, enabling powerful text operations and creative possibilities. |


## About

<table>
  <tr>
    <td valign="top" width="50%">
      <img src="./assets/EVA.jpg" alt="EVA Image" width="300"/>
    </td>
    <td valign="top" width="50%">
EVA (Emacs Virtual Assistant) is a groundbreaking project that aims to integrate a coding/agent LLM (Language Model) within Emacs, using it as its runtime or body. Leveraging Emacs’ text-based nature, continuous runtime, architectural openness, and vast tooling, EVA seeks to create a symbiotic relationship between Emacs and LLMs, enabling powerful text operations and creative possibilities.
    </td>
  </tr>
</table>


## About 
<div style="display: flex; flex-wrap: wrap;">
  <div style="flex: 1; max-width: 50%;">
    <img src="./assets/EVA.png" alt="EVA Image" style="width: 100%; max-width: 600px;"/>
  </div>
  <div style="flex: 1; padding-right: 20px; min-width: 300px; max-width: 50%;">
    EVA (Emacs Virtual Assistant) is a groundbreaking project that aims to integrate a coding/agent LLM (Language Model) within Emacs, using it as its runtime or body. Leveraging Emacs’ text-based nature, continuous runtime, architectural openness, and vast tooling, EVA seeks to create a symbiotic relationship between Emacs and LLMs, enabling powerful text operations and creative possibilities.
  </div>
</div>

<a id="orgd2e0783"></a>

## Table of Contents

1.  [EVA - Emacs Virtual Assistant](#org22d398b)
    1.  [About](#org7009272)
    2.  [State of the Project](#orgd2e0783)
        1.  [Now (Alpha)](#org4c6d1c6)
        2.  [Next](#org1346bcb)
        3.  [Later](#org21ccbd6)
    3.  [Overview of the Architecture](#org1f865f3)
    4.  [Guide and Request for Contributions](#orga0b19f6)
        1.  [Use Cases and Data](#org2742825)
        2.  [Model Creation](#org64f3ce6)
        3.  [Application Development](#org720c6cc)
        4.  [Hacker User](#org71cc2f9)
    5.  [Model Card](#org647d739)
        1.  [Model Details](#org48e8dd7)
        2.  [Training Data](#org991df2d)
    6.  [Insights and Examples of Data](#orgfaf5fc0)
    7.  [Contact](#org5d74d2d)
    8.  [Installation and Running Instructions](#org7e13b03)
    9.  [Demo of Current Capabilities](#org67624da)
        1.  [License](#org801a626)


## State of the Project


<a id="org4c6d1c6"></a>

### Now (Alpha)

The basic parts of the architecture are in place, including a setup for training, the model, an API, and a basic client. Currently, the model can perform basic Elisp operations like math, window, and file management.


<a id="org1346bcb"></a>

### Next

Build a helpful LLM/agent that can be trusted to perform rudimentary coding tasks.


<a id="org21ccbd6"></a>

### Later

The possibilities are limited only by creativity. Emacs and LLMs offer a match made in heaven, opening doors to innovative applications and functionalities.


<a id="org1f865f3"></a>

## Overview of the Architecture

EVA consists of an Emacs client that communicates with an LLM model hosted on a CUDA GPU-enabled server. The server runs a Flask app inside a Jupyter notebook, providing an API consumed by the Emacs client using Elisp native utilities. The output from the LLM is directly piped into the Elisp interpreter, allowing seamless interaction and execution.


<a id="orga0b19f6"></a>

## Guide and Request for Contributions

Contributing to EVA is simple and rewarding, with tasks ranging from 10 minutes to ongoing efforts. We are in the early stages of a potentially decade-long project, offering both freedoms and responsibilities. Here's how you can contribute:


<a id="org2742825"></a>

### Use Cases and Data

-   Write examples of tasks and corresponding Elisp code.
-   Adapt existing datasets to Elisp.
-   Administer others' contributions.
-   Capture and annotate Elisp during daily Emacs usage.


<a id="org64f3ce6"></a>

### Model Creation

-   Experiment with base models and fine-tuning.
-   Develop continuous training and distribution systems.
-   Create models for various hardware, local and cloud.
-   Explore distributed training methods.


<a id="org720c6cc"></a>

### Application Development

-   Build an Emacs package for communication between the model and Emacs.
-   Consider UI/UX aspects, safeguards, utility functions, and agent tooling.
-   Develop chain-of-thought architectures and sub-agents.


<a id="org71cc2f9"></a>

### Hacker User

-   Use EVA to solve problems and write about your experiences.


<a id="org647d739"></a>

## Model Card


<a id="org48e8dd7"></a>

### Model Details

The current model is fine-tuned on top of a 3b foundation model with a 300m Lora adapter.


<a id="org991df2d"></a>

### Training Data

The model was trained on 18,000 rows of instruction + Elisp pairs, covering topics from math to file administration. Most of the data was AI-generated.


<a id="orgfaf5fc0"></a>

## Insights and Examples of Data

The training data consists of a diverse range of topics, primarily focusing on Elisp operations. Examples include basic math operations, file management tasks, and more complex coding routines.


<a id="org5d74d2d"></a>

## Contact

Feel free to reach out on Discord @lazerjesus or create a GitHub issue.


<a id="org7e13b03"></a>

## Installation and Running Instructions

(To be provided by the project maintainer)


<a id="org67624da"></a>

## Demo of Current Capabilities

(To be provided or described by the project maintainer)


<a id="org801a626"></a>

### License

(If applicable)

EVA (Emacs Virtual Assistant) is a groundbreaking project that aims to integrate a coding/agent LLM (Language Model) within Emacs, using it as its runtime or body. Leveraging Emacs' text-based nature, continuous runtime, architectural openness, and vast tooling, EVA seeks to create a symbiotic relationship between Emacs and LLMs, enabling powerful text operations and creative possibilities.

