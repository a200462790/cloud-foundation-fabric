/**
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

module "project" {
  source          = "../../../../modules/project"
  parent          = var.root_node
  billing_account = var.billing_account.id
  project_create = var.project_create
  prefix          = var.prefix
  name            = var.project_id
  services = [
    "compute.googleapis.com",
    "memcache.googleapis.com",
    "redis.googleapis.com",
    "sqladmin.googleapis.com",
    "sql-component.googleapis.com",
    "stackdriver.googleapis.com",
    "file.googleapis.com"
  ]
}