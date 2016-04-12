function z = quad_pos_over_lin( x, y, varargin )

%QUAD_POS_OVER_LIN Sum of squares of positives over linear.
%   Z=QUAD_POS_OVER_LIN(X,Y), where X is a vector and Y is a scalar, is equal to
%   SUM(MAX(X,0).^2)./Y if Y is positive, and +Inf otherwise. Both X and Y must
%   be real.
%
%   For matrices, QUAD_POS_OVER_LIN(X,Y) is a row vector containing the 
%   application of QUAD_POS_OVER_LIN to each column. For N-D arrays, the
%   operation is applied to the first non-singleton dimension of X.
%
%   QUAD_POS_OVER_LIN(X,Y,DIM) takes the sum along the dimension DIM of X. 
%   A special value of DIM == 0, is accepted here, which is automatically
%   replaced with DIM == NDIMS(X) + 1. This has the effect of eliminating
%   the sum; thus QUAD_POS_OVER_LIN( X, Y, NDIMS(X) + 1 ) = MAX(X,0).^2./Y.
%
%   In all cases, both X and Y must be real, and Y must either be a scalar 
%   or a matrix of the same size as SUM(X,DIM).
%
%   Disciplined convex programming information:
%       QUAD_POS_OVER_LIN is convex, nondecreasing in X, and nonincreasing 
%       in Y. Thus when used with CVX expressions, X must be convex (or 
%       affine) and Y must be concave (or affine).

z = quad_over_lin( pos( x ), y, varargin{:} );

% Copyright 2005-2014 CVX Research, Inc. 
% See the file LICENSE.txt for full copyright information.
% The command 'cvx_where' will show where this file is located.
