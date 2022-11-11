%% ARRAY FINDER
%  It looks for arrays made up of increasing numbers; when a number is less than its previous one, the algorithm considers it as a new vector

n=input('n elements: ');
i=2;
while i<=n+1
    V(i)=input('element: ');
    i=i+1;
end
V(1)=0;
V(n+2)=-inf;
i=2;
while i<=n+1
    if V(i)<V(i+1)
        if V(i+1)<V(i+2)
            if V(i-1)<V(i)
                fprintf(' %d %d %d', V(i), V(i+1), V(i+2));
            else
                fprintf(', %d %d %d', V(i), V(i+1), V(i+2));
            end
            i=i+3;
        else
            if V(i-1)<V(i)
                fprintf(' %d %d', V(i), V(i+1));
            else
                fprintf(', %d %d', V(i), V(i+1));
            end
            i=i+2;
        end
    else
        if V(i-1)<V(i)
            fprintf(' %d', V(i));
        end
        i=i+1;
    end
end