# Weighted Tree-based Crop Classification Models for Imbalanced Datasets

Second place solution in the [Zindi AgriFieldNet India Challenge](https://zindi.africa/competitions/agrifieldnet-india-challenge)
to classify crop types in agricultural fields across Northern India using
multispectral observations from Sentinel-2 satellite. Ensembled weighted
tree-based models "LGBM, CATBOOST, XGBOOST" with stratified k-fold cross
validation, taking advantage of spatial variability around each field within
different distances.

![model_ecaas_agrifieldnet_silver_v1](https://radiantmlhub.blob.core.windows.net/frontend-ml-model-images/model_ecaas_agrifieldnet_silver_v1.png)

MLHub model id: `model_ecaas_agrifieldnet_silver_v1`. Browse on [Radiant MLHub](https://mlhub.earth/model/model_ecaas_agrifieldnet_silver_v1).

## Training Data

- [AgriFieldNet Competition Dataset - Source Imagery](https://api.radiant.earth/mlhub/v1/collections/ref_agrifieldnet_competition_v1_source)
- [AgriFieldNet Competition Dataset - Test Labels](https://api.radiant.earth/mlhub/v1/collections/ref_agrifieldnet_competition_v1_labels_train)

## Related MLHub Dataset

[AgriFieldNet Competition Dataset](https://mlhub.earth/data/ref_agrifieldnet_competition_v1)

## Citation

Alasawdah, M. "Weighted Tree-based Crop Classification Models for Imbalanced Datasets",
Version 1.0, Radiant MLHub. [Date Accessed] Radiant MLHub <https://doi.org/10.34911/rdnt.qiuwp5>

## License

[CC-BY-4.0](../LICENSE)

## Creator

Mohammad Alasawdah - Earth Observation and Climate Data Science
[https://www.linkedin.com/in/mohammad-alasawdah-b3b541a5/](https://www.linkedin.com/in/mohammad-alasawdah-b3b541a5/)

## Contact

masawdah@gmail.com

## Applicable Spatial Extent

The applicable spatial extent, for new inferencing.

```geojson
{
    "type": "FeatureCollection",
    "features": [
        {
            "properties": {
                "id": "ref_agrifieldnet_competition_v1"
            },
            "type": "Feature",
            "geometry": {
                "type": "MultiPolygon",
                "bbox": [
                    76.2448,
                    18.9414,
                    88.046,
                    28.327
                ],
                "coordinates": [
                    [
                        [
                            [
                                88.046,
                                18.9414
                            ],
                            [
                                88.046,
                                28.327
                            ],
                            [
                                76.2448,
                                28.327
                            ],
                            [
                                76.2448,
                                18.9414
                            ],
                            [
                                88.046,
                                18.9414
                            ]
                        ]
                    ]
                ]
            }
        }
    ]
}
```

## Applicable Temporal Extent

The recommended start/end date of imagery for new inferencing.

| Start | End |
|-------|-----|
| 2022-01-01 | present |

## Learning Approach

- Supervised

## Prediction Type

- Classification

## Training Operating System

- Linux

## Training Processor Type

- CPU

## Model Inferencing

Review the [GitHub repository README](../README.md) to get started running
this model for new inferencing.

### Training

Prepare the data for tree models by computing the average values of the pixels
within each field, then feature engineering by computing spatial variability,
more vegetation, and flowering phenology indices.

Zonal statistics (mean , min, max, std) within different radiuses (0.50, 1.00,
1.50, 2.50, 3.50, 5.00) Km around each field

### Model

Weighted average tree-based models: lightgbm. catboost, xgboost classifers.

### Structure of Output Data

- Predictions.csv: Final predictions text file, with 13 crops classes as following
 `Wheat, Mustard, Lentil, No Crop, Sugarcane, Garlic, Potato, Green pea, Bersem, Coriander, Gram, Maize, Rice`
- veg_indices.csv: Extracted vegetation indices for each field.
- Field_stats_indices.csv: Extracted statistics for each field.
