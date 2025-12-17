# OpenHalo: Compatibility Testing & Performance Benchmarking

## Project Overview

**OpenHalo** is a compatibility layer that enables applications written for **MySQL** to run on **PostgreSQL** without code changes. It supports the MySQL wire protocol and SQL dialect ([Official Documentation](https://www.openhalo.org/)).

This project, undertaken by a team of students from **IMT Atlantique** in collaboration with **Clever Cloud**, focused on enhancing OpenHalo's robustness and usability.

## Our Key Contributions

Our team developed and implemented a series of components to ensure reliable and validated a switch to OpenHalo:

* **SQL Compatibility Tester (Python)**: A tool to execute specific SQL queries on both MySQL and OpenHalo to verify support and detect behavioral differences.
* **Performance Benchmarking**: Protocols and scripts to compare latency and throughput.
* **Comprehensive Technical Documentation**: Detailed guides for installation, usage, and testing.

| Team Leaders |	Institution |
| ---- | ---- |
| Nélia Fedele, Sei Bayle, François-Xavier Collot, Juliette Faurie, Hugo Bentata, Montadhar Ettaieb, Houda Daouairi	| IMT Atlantique |

## Project Stages and Deliverables

The project was structured into four distinct phases, each contributing creating a new component to this OpenHalo toolbox.

### 1. Installation and Documentation

This phase focused on creating instructions for setting up OpenHalo in various development environments, ensuring easy entry for new users and developers.

* **Native Installation**:
    * **Linux**: Step-by-step guide available in [`InstallationDocumentation/LinuxTerminal/InstallationDocumentation.md`](./InstallationDocumentation/LinuxTerminal/InstallationDocumentation.md).
    * **MacOS**: Dedicated guide in [`InstallationDocumentation/MacOSTerminal/MacOsInstallationGuide.md`](./InstallationDocumentation/MacOSTerminal/MacOsInstallationGuide.md).
     * *Usage Guide:* [`HowToUseOpenHalo/HowToUseOpenHalo_PC.md`](./HowToUseOpenHalo/HowToUseOpenHalo_PC.md).
* **Docker Setup**:
    * We provide a reproducible environment using `compose.yaml` and a custom `docker-entrypoint.sh` located in [`InstallationDocumentation/Docker/`](./InstallationDocumentation/Docker/).
    * *Usage Guide:* [`HowToUseOpenHalo/HowToUseOpenHalo_Docker.md`](./HowToUseOpenHalo/HowToUseOpenHalo_Docker.md).

### 2. SQL Compliance Testing Tool

We developed a Python-based utility to audit OpenHalo's support for various SQL statements compared to a reference MySQL instance.

* **The Tool**: The main script is located at [`ComplianceTestingTool/openhalo_test_suite.py`](./ComplianceTestingTool/openhalo_test_suite.py).
* **Test Dataset (IMDB)**: To ensure realistic testing conditions, we utilized the IMDB dataset. The schema and data used for our tests are available in [`ComplianceTestingTool/DatabasesIMDB`](./ComplianceTestingTool/DatabasesIMDB).
* **Workflow**: The testing logic and validation process are detailed in [`ComplianceTestingTool/validation_workflow.md`](./ComplianceTestingTool/validation_workflow.md).

Here's how the tool works :

* **Functionality**: The tool runs a set of predefined queries against both databases.
* **Validation**: It categorizes queries as "Supported" (identical result), "Unsupported" (error in OpenHalo), or "Divergent" (different results).
* **Edge Cases**: Testing of specific SQL syntax and functions.

The complete list of executed queries, along with their expected outputs and compatibility status, is documented in [`TestingReport/OpenHaloMySQLCompatibilityTestingReport.md`](./TestingReport/OpenHaloMySQLCompatibilityTestingReport.md).

To run this script, please refer to [`ComplianceTestingTool/Python_tool_usage.md`](./ComplianceTestingTool/Python_tool_usage.md).

### 3. Performance Analysis and Benchmarking

We analyzed the performance characteristics of OpenHalo (backed by PostgreSQL) versus a standard MySQL deployment.

* **Methodology**: The protocol used for load testing is described in [`ComplianceTestingTool/PerformanceEvaluation.md`](./ComplianceTestingTool/PerformanceEvaluation.md).
* **Results**:
    * Raw JSON output: [`ComplianceTestingTool/openhalo_test_results.json`](./ComplianceTestingTool/openhalo_test_results.json)
      
## Getting Started

### Prerequisites

* A Linux environment (recommended) or MacOs environment
* Docker (for the containerized setup)
* Python 3.x
* Access to MySQL and PostgreSQL instances

> For official OpenHalo system requirements, refer to the [official website](https://www.openhalo.org/).

### Installation

For detailed installation instructions, including both native and Docker setups, please refer to the dedicated documentation:

```bash
# Clone the repository
git clone https://github.com/fxcollot/openHaloDocumentation.git
cd openHaloDocumentation
```

Consult InstallationDocumentation for complete setup instructions.
