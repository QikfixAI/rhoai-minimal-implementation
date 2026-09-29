# rhoai-minimal-implementation

## Disclaimer
This project or the binary files available in the `Releases` area are `NOT` delivered and/or released by Red Hat. This is an independent project to deploy the `RHOAI` minimal implementation.

---

## What will be available out of the box?

This set of `YAML` and `SH` files will allow you to, easily achieve the goals below
- Create a `demo` datascience project
- Create two `Hardware Profiles`, `1GPU` and `2GPU`, already pointing to `nvidia.com/gpu`
- Create a connection with `S4` (S3 Compatible Solution), setting all the parameters (we will improve this soon, to be flexible)
- Deploy some LLM
  - redhataig/ranite-33-8b-instruct
  - redhatai/llama-31-8b-instruct
  - redhatai/ministral-3-3b-instruc
  - tinyllama (from Quay.io)
  - deepseek-r1-distill-qwen-15b (from S3 local bucket)
- Also easily `Enable/Disable` some features

## How this works?

**Before moving on with the commands below, be sure that you are already connected in the correct `OCP + RHOAI` cluster.**

Clone the repo to your local machine, or you can download the `ZIP` file, and extract it.
```
git clone https://github.com/QikfixAI/rhoai-minimal-implementation.git
```

Access the folder
```
cd rhoai-minimal-implementation
```

Here, you can pick the version of your current RHOAI. At this moment, you can see that this repo is covering some versions, as presented below
  - v2.2x
  - v3.4
  - v3.5

Access the respective folder, and keep moving

To Enable `GenAI Studio`, proceed as below:
```
./enable_genai.sh
```

To Disable `GenAI Studio`, proceed as below:
```
./disable_genai.sh
```

To deploy all the components, proceed as below:
```
oc apply -f . -R
```

To remove all the components, proceed as below:
```
oc delete -f . -R
```

## File Structure

Here, you can see how the files are structured
```
├── LICENSE
├── README.md
├── v2.x
│   ├── 00-dsc_project
│   │   └── demo_project.yaml
│   ├── 01-hw_profile
│   │   └── hw_accelerator.yaml
│   ├── 02-S3
│   │   └── s4.yaml
│   ├── 03-llm_deployment
│   │   └── tinyllama_inf_serving_runtime_raw.yaml
│   ├── disable_hw_profile.sh
│   ├── enable_hw_profile.sh
│   └── README.md
├── v3.4
│   ├── 00-dsc_project
│   │   └── demo_project.yaml
│   ├── 01-hw_profile
│   │   ├── hw_profile_1gpu.yaml
│   │   └── hw_profile_2gpu.yaml
│   ├── 02-S3
│   │   └── s4.yaml
│   ├── 03-llm_deployment
│   │   ├── deepseek-r1-distill-qwen-15b.yaml
│   │   ├── redhataigranite-33-8b-instruct_inf_serving_runtime.yaml
│   │   ├── redhataillama-31-8b-instruct_inf_serving_runtime.yaml
│   │   ├── redhataiministral-3-3b-instruct_inf_serving_runtime.yaml
│   │   └── tinyllama_inf_serving_runtime.yaml
│   ├── disable_genai.sh
│   ├── enable_genai.sh
│   └── README.md
└── v3.5
    ├── 00-dsc_project
    │   └── demo_project.yaml
    ├── 01-hw_profile
    │   ├── hw_profile_1gpu.yaml
    │   └── hw_profile_2gpu.yaml
    ├── 02-S3
    │   └── s4.yaml
    ├── 03-llm_deployment
    │   ├── deepseek-r1-distill-qwen-15b.yaml
    │   ├── redhataigranite-33-8b-instruct_inf_serving_runtime.yaml
    │   ├── redhataillama-31-8b-instruct_inf_serving_runtime.yaml
    │   ├── redhataiministral-3-3b-instruct_inf_serving_runtime.yaml
    │   └── tinyllama_inf_serving_runtime.yaml
    ├── disable_genai.sh
    ├── enable_genai.sh
    └── README.md
```

## Feedback/Questions/Concerns

Please, feel free to access the [Issue](https://github.com/QikfixAI/rhoai-minimal-implementation/issues) tab on the top/left of this project, and let me know what you would like to see here. Also, feel free to reach out via waldirio@gmail.com


Thank you!<br>
Waldirio