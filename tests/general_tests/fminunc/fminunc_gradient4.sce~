//Find x in R^2 such that:
// Check if a user specifies correct Gradient function

function y = fun(x)
	y = x(1)^2 + x(2)^2;
endfunction
x0 = [1,2];
function y = grad(x)
	y=[2*x(1)];
endfunction
options=list("MaxIter", [1000], "CpuTime", [100], "Gradient", grad, "Hessian", "OFF");

//Error
//fminunc: Wrong Input for Objective Gradient function(3rd Parameter)---->Row Vector function of size [1 X 2] is Expected
//at line     320 of function fminunc called by :  
//[xopt,fopt,exitflag,output,gradient,hessian] = fminunc (fun, x0, options);



[xopt,fopt,exitflag,output,gradient,hessian] = fminunc (fun, x0, options);
