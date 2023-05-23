df_train = data.frame(aa = 1:10,
                       bb = 4:13)
df_train

df_test = data.frame(aa = 5:12,
                     bb = 8:15)
df_test

library("caret")

model_minmax = preProcess(x = df_train, method = "range")
predict(model_minmax, df_train)
df_test_nor = predict(model_minmax, df_test)
df_test_nor

df_bind = rbind(df_train, df_test)
model_minmax2 = preProcess(x = df_bind, method = "range")
predict(model_minmax2, df_bind)
