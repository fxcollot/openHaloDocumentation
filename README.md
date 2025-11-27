# OpenHalo Enhancement Project: Automated Validation and Performance Benchmarking

## Project Overview

**OpenHalo** is an innovative tool designed to streamline the complex process of migrating databases from **MySQL** to **PostgreSQL**. It offers automation across key migration stages: **schema conversion, data migration, and performance validation**.

This project, undertaken by a team of students from **IMT Atlantique** in collaboration with **Clever Cloud**, focused on significantly enhancing OpenHalo's robustness and usability.

## Our Key Contributions

Our team developed and implemented a series of crucial components to ensure reliable and validated migrations:

* **Python-based Automated Testing Framework**: A tool to automatically execute and validate migration scenarios.
* **Database Benchmarking**: Scripts and protocols for rigorous performance analysis and comparison.
* **Comprehensive Technical Documentation**: Detailed guides for installation, usage, and testing.

| Team Leads |	Institution |
| ---- | ---- |
| Nélia Fedele, Sei Bayle, François-Xavier Collot, Juliette Faurie, Hugo Bentata, Montadhar Ettaieb, Houda Daouairi	| IMT Atlantique |

## Project Stages and Deliverables

The project was structured into four distinct phases, each contributing a vital component to the overall success of the OpenHalo tool.

### 1. Installation and Documentation

This phase focused on creating clear, comprehensive instructions for setting up OpenHalo in various development environments, ensuring a low barrier to entry for new users and developers.

* **Linux Environment Installation**: Detailed step-by-step guide for native installation on Linux systems.
* **Dockerized Setup**: Creation and documentation of a reproducible setup using **Docker**, simplifying environment management and dependency handling. (Reference: HowToUseOpenHalo.md, docker-entrypoint.sh)

### 2. Automated Testing Framework Development

A core deliverable was the creation of a reliable framework to test migration correctness automatically. This tool ensures that the migrated PostgreSQL database accurately reflects the original MySQL database structure and data.

* **Python-based Tool**: Development of a command-line utility in Python to orchestrate and execute test scenarios.
* **Test Protocols**: Definition of standardized test cases, including edge case handling and data integrity checks.
* **Compliance Testing**: Integration of tests focusing on schema compatibility and SQL feature translation. (Reference: ComplianceTestingTool)

### 3. Performance Analysis and Benchmarking

Beyond mere migration, we rigorously tested the performance impact of the migration to ensure that the PostgreSQL deployment maintains or improves the original MySQL performance characteristics.

* **Benchmarking Setup**: Implementation of a controlled environment to run standardized database load tests.
* **Comparative Analysis**: Execution of benchmarks (e.g., read/write latency, query throughput) on both the original MySQL and the migrated PostgreSQL databases.
* **Reporting**: Analysis of results to identify performance regressions or improvements post-migration.

## Getting Started

### Prerequisites

* A Linux environment (recommended)
* Docker (for the containerized setup)
* Python 3.x
* Access to MySQL and PostgreSQL instances

### Installation

For detailed installation instructions, including both native and Docker setups, please refer to the dedicated documentation:

```bash
# Clone the repository
git clone https://github.com/fxcollot/openHaloDocumentation.git
cd openHaloDocumentation
```

Consult InstallationDocumentation for complete setup instructions.
