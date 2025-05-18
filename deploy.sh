#!/bin/bash
hugo
aws s3 sync public/ s3://ngnerds-dev-site
aws cloudfront create-invalidation --distribution-id E2PFXBGT22LR4N --paths "/*"
