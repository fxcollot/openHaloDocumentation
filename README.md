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

* **Linux and MacOs Environment Installation**: Detailed step-by-step guide for native installation on Linux and MacOs systems.
* **Dockerized Setup**: Creation and documentation of a reproducible setup using **Docker**, simplifying environment management and dependency handling. (Reference: [HowToUseOpenHalo.md](./HowToUseOpenHalo.md), docker-entrypoint.sh)

### 2. SQL Compliance Testing Tool

We developed a Python-based utility to audit OpenHalo's support for various SQL statements compared to a reference MySQL instance.

* **Functionality**: The tool runs a set of predefined queries against both databases.
* **Validation**: It categorizes queries as "Supported" (identical result), "Unsupported" (error in OpenHalo), or "Divergent" (different results).
* **Edge Cases**: Testing of specific SQL syntax and functions.

* **Internal Reference**: [ComplianceTestingTool](./ComplianceTestingTool)

### 3. Performance Analysis and Benchmarking

We analyzed the performance characteristics of OpenHalo (backed by PostgreSQL) versus a standard MySQL deployment.

* **Methodology**: Execution of standardized workloads to measure read/write latency and query throughput.
* **Comparison**: Direct comparison of execution metrics between the two systems.

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
