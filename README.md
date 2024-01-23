# Toronto_CrimeVictims

This repository focuses on analyzing and visualizing data related to victims of crimes in the city of Toronto. The analysis encompasses various aspects, including trends in crime rates, characteristics of victim groups, and the potential impact of external factors like the COVID-19 pandemic.

## Statement on LLM Usage
Certain sections of the code were generated with the assistance of ChatGPT3.5. The complete chat history is available in `inputs/llms/usage.txt`. It's important to acknowledge the collaboration with this language model to enhance the analytical process.

## Reproducibility

### Dependencies
To reproduce the analysis, ensure you have the following R packages installed:

- `opendatatoronto`
- `knitr`
- `lubridate`
- `tidyverse`
- `kableExtra`
- `ggplot2`

You can install these packages using the following command:

```R
install.packages(c("opendatatoronto", "knitr", "lubridate", "tidyverse", "kableExtra", "ggplot2"))
```

### Code Execution
The analysis is performed in R, and the code is available in the `analysis` directory. To execute the code, follow these steps:

1. Load the required libraries.
2. Read the cleaned data from the CSV file.
3. Perform data filtering and manipulation for specific analyses.
4. Generate tables and graphs to visualize trends.

The generated tables and graphs offer insights into crime victim patterns, age group distributions, and the impact of the COVID-19 pandemic.

## Folder Structure

- **inputs:** Contains input data and additional resources.
  - **llms:** Includes the chat history with the language model.
- **analysis:** Holds R scripts and notebooks for data analysis.
- **outputs:** Stores generated tables, graphs, and other output files.

## Additional Resources

- [Statista Research Department - Crime in Canada](https://www.statista.com/topics/2814/crime-in-canada/)
- [Opendatatoronto GitHub Repository](https://github.com/sharlagelfand/opendatatoronto)
- [Toronto Police Services - Annual Statistical Report](https://data.torontopolice.on.ca/datasets/TorontoPS::reported-crimes-asr-rc-tbl-001/about)

## Code and Data Availability

The entire codebase and datasets used for this analysis are available in this repository. You can reproduce the analysis by following the instructions provided in the README.

For any questions or clarifications, feel free to reach out to the repository owner.

*Code and data supporting this analysis is available at: https://github.com/Chay-HyunminPark/Toronto_CrimeVictims.git*
