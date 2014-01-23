#################
####### Vladimir s code with a small change for doubles
#################

branching_sampling_times <- function(phy)
{
  phy = new2old.phylo(phy)

  if (class(phy) != "phylo")
    stop("object \"phy\" is not of class \"phylo\"")

  tmp <- as.numeric(phy$edge)
  nb.tip <- max(tmp)
  nb.node <- -min(tmp)
  xx <- as.numeric(rep(NA, nb.tip + nb.node))
  names(xx) <- as.character(c(-(1:nb.node), 1:nb.tip))
  xx["-1"] <- 0

  for (i in 2:length(xx))
  {
    nod <- names(xx[i])
    ind <- which(phy$edge[, 2] == nod)
    base <- phy$edge[ind, 1]
    xx[i] <- xx[base] + phy$edge.length[ind]
  }

  depth <- max(xx)
  branching_sampling_times <- depth - xx
  
  return(branching_sampling_times)
}

heterochronous_gp_stat <- function(phy)
{
  b.s.times = branching_sampling_times(phy)
  int.ind = which(as.numeric(names(b.s.times)) < 0)
  tip.ind = which(as.numeric(names(b.s.times)) > 0)
  num.tips = length(tip.ind)
  num.coal.events = length(int.ind)
  sampl.suf.stat = rep(NA, num.coal.events)
  coal.interval = rep(NA, num.coal.events)
  coal.lineages = rep(NA, num.coal.events)
  sorted.coal.times = sort(b.s.times[int.ind])
  names(sorted.coal.times) = NULL
  #unique.sampling.times = sort(unique(b.s.times[tip.ind]))
  sampling.times = sort((b.s.times[tip.ind]))

  for (i in 2:length(sampling.times))
  {
    if ((sampling.times[i]-sampling.times[i-1])<0.1)
    {
      sampling.times[i]<-sampling.times[i-1]
    }
  }
  unique.sampling.times<-unique(sampling.times)
  sampled.lineages = NULL
  for (sample.time in unique.sampling.times)
  {
    sampled.lineages = c(sampled.lineages, sum(sampling.times == sample.time))  
  }
  
  return(list(coal.times=sorted.coal.times, sample.times = unique.sampling.times, sampled.lineages=sampled.lineages))
}