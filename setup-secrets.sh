#!/usr/bin/env bash
set -e

echo "Setting up RepoSensei secrets…"
mkdir -p secrets
chmod 700 secrets

read -p "Supabase Project URL: " supabase_url
read -s -p "Supabase Anon Key: " supabase_anon_key; echo
read -s -p "Supabase Service Role Key: " supabase_service_role_key; echo
read -s -p "GitHub Personal Access Token: " github_token; echo

echo "$supabase_url"             > secrets/supabase_url.txt
echo "$supabase_anon_key"       > secrets/supabase_anon_key.txt
echo "$supabase_service_role_key"> secrets/supabase_service_role_key.txt
echo "$github_token"            > secrets/github_token.txt

chmod 600 secrets/*.txt
echo "Secrets created in ./secrets/ (permissions: 600)"
echo "Now run: docker-compose up --build" 