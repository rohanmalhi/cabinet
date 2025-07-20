# cabinet
cabinet is a __<ins>WIP</ins>__ zero pollution bash utility for syncing dotfiles between compatible Unix-like systems.

## Usage
### Configuration
cabinet is configured with environment variables. Most users will only need to configure `CAB_REMOTE` to a git repository of their choice. The following table lists the possible variables along with their default values.

Variable  | Default value 
--- | --- 
`CAB_REMOTE` | `N/A`
`CAB_DIR`  | `$HOME/.config/cabinet`
`CAB_CONF` | `$CAB_DIR/cabinet.conf`
`CAB_BACKUP` | `$CAB_DIR/backup`
`CAB_BRANCH`  | `git config --get init.defaultBranch`

> [!WARNING]
> If `init.defaultBranch` is not set in git, then `CAB_BRANCH` must be set

The cabinet configuration file, by default at `$HOME/.config/cabinet/cabinet.conf`, is a plaintext list of files and directories to be synced.
> [!NOTE]
> File paths are relative from `~/.config/`. Cabinet currently only supports files placed in `$HOME` or `$HOME/.config/` (or a subdirectory)

### Arguments
cabinet has two primary commands, `push`, and `pull`. They correspond to the equivalent actions in git. 
