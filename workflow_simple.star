def main(ctx):
  return [
    {
      "name": "workflow 1 from star",
      "steps": [
        {
          "name": "step 1 from star",
          "image": "golang:1.24",
          "commands": [
            "ls",
          ],
        }
      ]
    }
  ]
