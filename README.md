# file-cabinet
file-cabinet is a __<ins>WIP</ins>__ zero pollution bash utility for syncing dotfiles between Unix systems.

## Usage
### Configuration
file-cabinet is configured with environment variables. The following table lists the variables along with their default values.

Variable  | Default value 
--- | --- 
`FC_REPO`  | N/A
`FC_DEFAULT_BRANCH`  | `git config --get init.defaultBranch`
`FC_CONFIG_PATH` | `~/.config/file-cabinet.conf`

> [!WARNING]
> If `init.defaultBranch` is not set in git, then FC_DEFAULT_BRANCH must be set

The file-cabinet configuration file, by default at ~/.config/file-cabinet.conf, is a plaintext list of files and directories to be synced.
> [!NOTE]
> File paths can either be absolute or relative from `~/.config/`

### Arguments
file-cabinets has two arguments, `push`, and `pull`. They correspond to the equivalent actions in git. 
