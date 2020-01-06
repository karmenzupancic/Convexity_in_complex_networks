
# coding: utf-8

# In[1]:


import random
def sosedi_ki_se_niso_v_S(sez1,sez2):
    return [u for u in sez1 if u not in sez2]


# In[4]:


def convextion_of_convex_subsets_brez_izpisovanja(graf):
    S = set()
    S.add(graf.random_vertex())
    Seznam_grafov=[]
    Graf_convexity_lastnosti =graf.convexity_properties()
    while len(S) < graf.order():
        kandidati=[]
        for i in S:
            kandidati += graf[i]
        kandidati = sosedi_ki_se_niso_v_S(kandidati,S)
        S = set(Graf_convexity_lastnosti.hull(list(S)+[random.choice(kandidati)]))
        Seznam_grafov.append(graf.subgraph(S))
    return Seznam_grafov


# In[3]:


import networkx as nx
import math
G_m3 = nx.read_edgelist("out.opsahl-powergrid", comments='%', create_using=nx.Graph(), nodetype=int)
G_m_sage3 = Graph(G_m3)


# In[4]:


convextion_of_convex_subsets_brez_izpisovanja(G_m_sage3)


# In[2]:


import networkx as nx
import math
G_m4 = nx.read_edgelist("out.ego-facebook", comments='%', create_using=nx.Graph(), nodetype=int)
G_m_sage4 = Graph(G_m4)


# In[5]:


convextion_of_convex_subsets_brez_izpisovanja(G_m_sage4)

