//Find x in R^6 such that:
// Check if a user specifies function or not

fun = [];
x0 = [1,2,3,4,5,6];
options=list("MaxIter", [1500], "CpuTime", [500], "Gradient", "OFF", "Hessian", "OFF");

//Error
//fminunc: Expected function for Objective 
//at line     148 of function fminunc called by :  
//[xopt,fopt,exitflag,output,gradient,hessian] = fminunc (fun, x0, options);


[xopt,fopt,exitflag,output,gradient,hessian] = fminunc (fun, x0, options);

