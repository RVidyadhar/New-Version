//Find x in R^6 such that:
// Check if a user specifies function or not

fun = [];
x1 = [1,1,1,1,1,1];
x2 = [6,6,6,6,6,6];
options=list("MaxIter", [1500], "CpuTime", [500],"TolX",[1e-6]);

//Error
//fminbnd: Expected function for Objective (1st Parameter)
//at line     150 of function fminbnd called by :  
//[xopt,fopt,exitflag,output,lambda] = fminbnd (fun, x1, x2, options);

[xopt,fopt,exitflag,output,lambda] = fminbnd (fun, x1, x2, options);

