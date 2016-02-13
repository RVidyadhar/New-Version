//Objective function to be minimised
function y=f(x)
		y=log(x(1))+log(x(2));
endfunction

//Starting point, linear constraints and variable bounds
x0=[2,2];
A=[];
b=[];
Aeq=[];
beq=[];
lb=[0,0];
ub=[10,10];
//exec builder.sce;
//exec loader.sce;

//Nonlinear constraints
function [c,ceq]=nlc(x)
    c=[];
    ceq = [];
endfunction

//Options
options=list("MaxIter", [1500], "CpuTime", [500]);

//Gradient of objective function
function y= funG(x)
	y= [x(2),x(1)+x(3),x(2)];
endfunction

//Hessian of lagrangian
function y= funH(x,obj,lambda)
	y= obj*[0,1,0;1,0,1;0,1,0] + lambda(1)*[2,0,0;0,-2,0;0,0,2] + lambda(2)*[2,0,0;0,2,0;0,0,2]
endfunction

//Gradient of constraints
function [cg,ceqg]= cg(x)
	cg=[2*x(1) , -2*x(2) , 2*x(3) ; 2*x(1) , 2*x(2) , 2*x(3)];
	ceqg=[];
	//or, this is another way of writing it : y=[2*x(1),-2*x(2),2*x(3),2*x(1),2*x(2),2*x(3)];	
endfunction

//Calling fmincon to solve the given problem
[x,fval,exitflag,output,lambda,grad,hessian] =fmincon(f, x0,A,b,Aeq,beq,lb,ub)
//[x,fval,exitflag,output]=fminbnd(f,lb,ub)
//[x,fval]=fminunc(f,x0)
