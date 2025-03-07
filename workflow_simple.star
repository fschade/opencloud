def main(ctx):
  return [
    {
      "name": "workflow 1",
      "steps": [
        {
          "image": "golang:1.24",
          "commands": [
            "ls",
          ],
        }
      ]
    }
  ]
