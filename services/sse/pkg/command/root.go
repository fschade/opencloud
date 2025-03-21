package command

import (
	"os"

	"github.com/urfave/cli/v2"

	"github.com/opencloud-eu/opencloud/pkg/clihelper"
	"github.com/opencloud-eu/opencloud/services/sse/pkg/config"
)

// GetCommands provides all commands for this service
func GetCommands(cfg *config.Config) cli.Commands {
	return []*cli.Command{
		Server(cfg),
		Health(cfg),
		Version(cfg),
	}
}

// Execute is the entry point for the sse command.
func Execute(cfg *config.Config) error {
	app := clihelper.DefaultApp(&cli.App{
		Name:     "sse",
		Usage:    "Serve sse for OpenCloud",
		Commands: GetCommands(cfg),
	})

	return app.RunContext(cfg.Context, os.Args)
}
