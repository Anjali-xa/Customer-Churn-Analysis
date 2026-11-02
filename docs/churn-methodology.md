# Customer Churn Analysis Methodology

## Definitions to confirm
- Churn event: explicit cancellation, non-renewal, or inactivity threshold defined by the business.
- Churn rate: customers churning during a period / customers at risk at period start.
- Retention rate: retained customers from a starting cohort / starting cohort size.
- Cohort: customers grouped by a common start or activation period.
- Tenure: elapsed time between activation and churn or observation end.

## Data checks
- Confirm one canonical customer identifier.
- Resolve duplicate subscriptions and account merges.
- Distinguish churn from pause, suspension, and temporary inactivity.
- Avoid using future information in features for a prediction task.
- Check observation windows and right-censoring.
- Document missing values and category mapping.

## Analysis questions
1. How does churn vary by acquisition cohort?
2. Which customer segments have different retention patterns?
3. How does tenure relate to churn?
4. Which service or billing indicators warrant further investigation?

## Interpretation
Descriptive associations do not establish causes. Prediction metrics should be evaluated on a time-aware holdout set.