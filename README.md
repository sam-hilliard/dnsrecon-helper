# dnsrecon_helper

`dnsrecon_helper` is a bash script designed to extend the functionality of the `dnsrecon` tool by allowing it to read domains from a file. This wrapper script automates the process of running `dnsrecon` for each domain listed in a file and saves the results in both text and XML formats.

## Purpose

The purpose of `dnsrecon_helper` is to streamline DNS reconnaissance tasks by enabling batch processing of multiple domains through `dnsrecon`. This is particularly useful for security assessments and large-scale DNS analysis.

## Usage

### Prerequisites

Ensure that `dnsrecon` is installed on your system. You can install it using `pip`:

```bash
pip install dnsrecon
```

### Running dnsrecon_helper

To use `dnsrecon_helper`, provide a file containing a list of domains (one per line) as an argument. The script will process each domain, run `dnsrecon`, and save the outputs.

```bash
./dnsrecon_helper.sh domains.txt
```

### Example domains.txt File

```
example.com
anotherdomain.com
yetanotherdomain.com
```

### Sample Output

For each domain in `domains.txt`, the script will generate two output files:
- `<domain>.txt`: A text file containing the output of `dnsrecon`.
- `<domain>.xml`: An XML file containing the output of `dnsrecon`.

Example:

```bash
dnsrecon results for example.com saved to example.com.txt and example.com.xml
dnsrecon results for anotherdomain.com saved to anotherdomain.com.txt and anotherdomain.com.xml
dnsrecon results for yetanotherdomain.com saved to yetanotherdomain.com.txt and yetanotherdomain.com.xml
```

## Notes

- Ensure you have `dnsrecon` installed and accessible in your PATH.
- The script skips empty lines in the input file.
- Output files are named based on the domain and saved in the current directory.

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.
