#Credgrep (ProxyNova COMB Search Tool)
##Description
This tool is a Bash script designed to perform searches in ProxyNova COMB (Combination Of Many Breaches) using a keyword provided by the user. It uses the ProxyNova API to search for compromised credential combinations matching the provided keyword and displays the results in a well-organized table in the terminal.

##Requirements
- Operating System: Any system that supports Bash (Linux, macOS, Windows with WSL).
- Dependencies:
    - curl: For making HTTP requests.
    - awk: For processing and formatting text.
Ensure these tools are installed before running the script.

##Installation
- Clone the repository:
  ```git clone https://github.com/vegxsilva2/credgrep.git```
- Make the script executable:
  ```chmod +x credgrep.sh```
##Usage
Run the script by providing a keyword as an argument:

```./credgrep.sh -k [keyword]```
##Customization
- Modify the Output: The script uses printf to format the output. You can customize the format, column width, or add colors by changing the format specifiers in the script.

- Adjust the Keyword: Change the KEYWORD variable directly in the script or pass it as an argument when running it.

##Security Notes
- Privacy: This tool performs searches on public databases of compromised credentials. Use it solely for ethical and security purposes.
- Responsibility: The author is not responsible for any misuse of this tool.
##Contributions
If you want to contribute to this tool, please follow these steps:

- Fork the repository.
- Create a new branch (git checkout -b feature/new-feature).
- Make your changes and commit them (git commit -m 'Add new feature').
- Push your branch (git push origin feature/new-feature).
- Open a Pull Request.

##Author
Developed by vegxsilva.
