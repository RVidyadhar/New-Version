//Objective function to be minimised
function y=fun(x)
y= exp(x(1))*(4*x(1)^2+2*x(2)^2+4*x(1)*x(2)+2*x(2)+1);
endfunction
//Starting point, linear constraints and variable bounds
A = [];
b = [];
Aeq = [];
beq = [];
lb = [];
ub = [];
x0 = [100,-100];
function [c,ceq] = unitdisk(x)
c = -x(1)*x(2) - 10;
ceq = x(1)^2 + x(2) - 1;
endfunction
//exec builder.sce;
//exec loader.sce;
function y= funG(x)
	y= [-400*(x(2)-x(1)^2)*x(1)-2*(1-x(1));200*(x(2)-x(1)^2)];
endfunction
options=list("MaxIter", [5000], "CpuTime", [500],"GradObj",funG);
//Calling Ipopt
[x,fval,exitflag,output,lambda,grad,hessian] =fmincon(fun,x0,A,b,Aeq,beq,lb,ub,unitdisk)
