#!/bin/bash

# Generate Redis subnet group
aws elasticache create-cache-subnet-group \
        --cache-subnet-group-name ext-4723-subnetgroup-curs \
        --cache-subnet-group-description "Curs TV3 subnet" \
        --subnet-ids subnet-0ff6589d20d0013b9 \
        --region eu-west-1

# Generate the Redis cluster
aws elasticache create-replication-group \
        --replication-group-id "ext-4723-rediscluster-curs" \
        --replication-group-description "Example Curs Izhan" \
        --num-node-groups 3 \
        --cache-node-type cache.t2.micro \
        --cache-parameter-group default.redis5.0.cluster.on \
        --engine redis \
        --engine-version 5.0.3 \
        --security-group-ids sg-020768c5e2fada3d0 \
        --cache-subnet-group-name "ext-4723-subnetgroup-curs" \
        --node-group-configuration \
        --region eu-west-1