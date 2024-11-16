library(lme4)
library(lattice)

#Null Model
Null_model_HSB <-lmer(mathach~1 + (1|school), data=HSB, REML=FALSE)
summary(Null_model_HSB)

#Model 2
Model2_HSB <-lmer(mathach~minority + female + (1|school), data=HSB, REML=FALSE)
summary(Model2_HSB)

#Model 3
Model3_HSB <-lmer(mathach~minority + female + size + (1|school), data=HSB, REML=FALSE)
summary(Model3_HSB)

anova(Null_model_HSB, Model2_HSB)
anova(Model2_HSB, Model3_HSB)


plot(Model2_HSB)

dotplot(ranef(Model2_HSB))

qqmath(ranef(Model2_HSB))