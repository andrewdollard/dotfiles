#!/usr/bin/env python3
"""Minimal MCP server that provides a current_date tool."""

import json
import sys
from datetime import date


def handle(request):
    method = request.get("method")
    req_id = request.get("id")

    if method == "initialize":
        return {
            "jsonrpc": "2.0",
            "id": req_id,
            "result": {
                "protocolVersion": "2024-11-05",
                "capabilities": {"tools": {}},
                "serverInfo": {"name": "date-server", "version": "1.0.0"},
            },
        }
    elif method == "tools/list":
        return {
            "jsonrpc": "2.0",
            "id": req_id,
            "result": {
                "tools": [
                    {
                        "name": "current_date",
                        "description": "Returns the current date formatted as YYYY-MM-DD",
                        "inputSchema": {"type": "object", "properties": {}},
                    }
                ]
            },
        }
    elif method == "tools/call":
        return {
            "jsonrpc": "2.0",
            "id": req_id,
            "result": {
                "content": [{"type": "text", "text": date.today().isoformat()}]
            },
        }
    return None


def main():
    for line in sys.stdin:
        line = line.strip()
        if not line:
            continue
        try:
            request = json.loads(line)
            response = handle(request)
            if response:
                sys.stdout.write(json.dumps(response) + "\n")
                sys.stdout.flush()
        except json.JSONDecodeError:
            pass


if __name__ == "__main__":
    main()
