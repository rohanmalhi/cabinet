# cabinet
cabinet is a __<ins>WIP</ins>__ zero pollution bash utility for syncing dotfiles between Unix systems.

## Usage
### Configuration
cabinet is configured with environment variables. The following table lists the variables along with their default values.

Variable  | Default value 
--- | --- 
`CAB_REPO`  | N/A
`CAB_BRANCH`  | `git config --get init.defaultBranch`
`CAB_PATH` | `~/.config/cabinet.conf`

> [!WARNING]
> If `init.defaultBranch` is not set in git, then CABBRANCH must be set

The cabinet configuration file, by default at `~/.config/cabinet.conf`, is a plaintext list of files and directories to be synced.
> [!NOTE]
> File paths can either be absolute or relative from `~/.config/`

### Arguments
cabinet has two arguments, `push`, and `pull`. They correspond to the equivalent actions in git. 
