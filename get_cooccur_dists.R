#script for getting the distribution of each co-occurrence from real data
#source('~/Rprojects/simulating-collab-discourse/analysis/real_data_results_final.R')

mats_ = co_mats
vecs = map(mats_,as.numeric)
co_dists = bind_rows(vecs)
co_dists = t(co_dists)

save(co_dists,file = "co_dists.Rdata")

#test = matrix(co_dists[1,],9,9)
