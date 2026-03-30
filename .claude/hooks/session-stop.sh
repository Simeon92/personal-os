#!/usr/bin/env bash
# session-stop.sh — Trigger process-session skill at end of every session

printf '{"type":"system","message":"SESSION ENDING — Run the /process-session skill now to capture any preferences, mistakes, ideas, or commitments from this conversation. Do this before closing."}'
